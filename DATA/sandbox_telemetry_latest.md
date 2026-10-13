# sandbox_telemetry_parse — 2026-10-13 13:06:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1096865 lines=2805
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2168 |
| `chrome_profile_sample` | 629 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2168} |
| `chromeGpuPssKb` | {'int': 2168} |
| `chromeOtherPssKb` | {'int': 2168} |
| `chromeProcesses` | {'int': 2168} |
| `chromeProfiles` | {'int': 2168} |
| `chromeRendererMaxPssKb` | {'int': 2168} |
| `chromeRendererPssKb` | {'int': 2168} |
| `chromeRenderers` | {'int': 2168} |
| `chromeTabs` | {'int': 2168} |
| `chromeTabsProbedProfiles` | {'int': 2168} |
| `chromeUtilityPssKb` | {'int': 2168} |
| `desktopPssKb` | {'int': 2168} |
| `hostPssKb` | {'int': 2168} |
| `kind` | {'str': 2168} |
| `memAvailableKb` | {'int': 2168} |
| `memTotalKb` | {'int': 2168} |
| `otherPssKb` | {'int': 2168} |
| `processes` | {'int': 2168} |
| `pssFallbackProcesses` | {'int': 2168} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 628} |
| `display` | {'int': 629} |
| `kind` | {'str': 629} |
| `processes` | {'int': 629} |
| `pssKb` | {'int': 629} |
| `rendererMaxPssKb` | {'int': 629} |
| `renderers` | {'int': 629} |
| `tabs` | {'int': 629} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

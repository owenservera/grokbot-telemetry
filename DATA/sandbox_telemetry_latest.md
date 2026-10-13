# sandbox_telemetry_parse — 2026-10-13 03:59:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=803297 lines=1883
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1707 |
| `chrome_profile_sample` | 168 |
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
| `chromeBrowserPssKb` | {'int': 1707} |
| `chromeGpuPssKb` | {'int': 1707} |
| `chromeOtherPssKb` | {'int': 1707} |
| `chromeProcesses` | {'int': 1707} |
| `chromeProfiles` | {'int': 1707} |
| `chromeRendererMaxPssKb` | {'int': 1707} |
| `chromeRendererPssKb` | {'int': 1707} |
| `chromeRenderers` | {'int': 1707} |
| `chromeTabs` | {'int': 1707} |
| `chromeTabsProbedProfiles` | {'int': 1707} |
| `chromeUtilityPssKb` | {'int': 1707} |
| `desktopPssKb` | {'int': 1707} |
| `hostPssKb` | {'int': 1707} |
| `kind` | {'str': 1707} |
| `memAvailableKb` | {'int': 1707} |
| `memTotalKb` | {'int': 1707} |
| `otherPssKb` | {'int': 1707} |
| `processes` | {'int': 1707} |
| `pssFallbackProcesses` | {'int': 1707} |

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
| `cpuMillicores` | {'int': 167} |
| `display` | {'int': 168} |
| `kind` | {'str': 168} |
| `processes` | {'int': 168} |
| `pssKb` | {'int': 168} |
| `rendererMaxPssKb` | {'int': 168} |
| `renderers` | {'int': 168} |
| `tabs` | {'int': 168} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

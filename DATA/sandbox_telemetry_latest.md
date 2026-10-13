# sandbox_telemetry_parse — 2026-10-13 05:14:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=845318 lines=2015
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1773 |
| `chrome_profile_sample` | 234 |
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
| `chromeBrowserPssKb` | {'int': 1773} |
| `chromeGpuPssKb` | {'int': 1773} |
| `chromeOtherPssKb` | {'int': 1773} |
| `chromeProcesses` | {'int': 1773} |
| `chromeProfiles` | {'int': 1773} |
| `chromeRendererMaxPssKb` | {'int': 1773} |
| `chromeRendererPssKb` | {'int': 1773} |
| `chromeRenderers` | {'int': 1773} |
| `chromeTabs` | {'int': 1773} |
| `chromeTabsProbedProfiles` | {'int': 1773} |
| `chromeUtilityPssKb` | {'int': 1773} |
| `desktopPssKb` | {'int': 1773} |
| `hostPssKb` | {'int': 1773} |
| `kind` | {'str': 1773} |
| `memAvailableKb` | {'int': 1773} |
| `memTotalKb` | {'int': 1773} |
| `otherPssKb` | {'int': 1773} |
| `processes` | {'int': 1773} |
| `pssFallbackProcesses` | {'int': 1773} |

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
| `cpuMillicores` | {'int': 233} |
| `display` | {'int': 234} |
| `kind` | {'str': 234} |
| `processes` | {'int': 234} |
| `pssKb` | {'int': 234} |
| `rendererMaxPssKb` | {'int': 234} |
| `renderers` | {'int': 234} |
| `tabs` | {'int': 234} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

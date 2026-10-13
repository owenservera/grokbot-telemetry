# sandbox_telemetry_parse — 2026-10-13 06:24:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=883497 lines=2135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1833 |
| `chrome_profile_sample` | 294 |
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
| `chromeBrowserPssKb` | {'int': 1833} |
| `chromeGpuPssKb` | {'int': 1833} |
| `chromeOtherPssKb` | {'int': 1833} |
| `chromeProcesses` | {'int': 1833} |
| `chromeProfiles` | {'int': 1833} |
| `chromeRendererMaxPssKb` | {'int': 1833} |
| `chromeRendererPssKb` | {'int': 1833} |
| `chromeRenderers` | {'int': 1833} |
| `chromeTabs` | {'int': 1833} |
| `chromeTabsProbedProfiles` | {'int': 1833} |
| `chromeUtilityPssKb` | {'int': 1833} |
| `desktopPssKb` | {'int': 1833} |
| `hostPssKb` | {'int': 1833} |
| `kind` | {'str': 1833} |
| `memAvailableKb` | {'int': 1833} |
| `memTotalKb` | {'int': 1833} |
| `otherPssKb` | {'int': 1833} |
| `processes` | {'int': 1833} |
| `pssFallbackProcesses` | {'int': 1833} |

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
| `cpuMillicores` | {'int': 293} |
| `display` | {'int': 294} |
| `kind` | {'str': 294} |
| `processes` | {'int': 294} |
| `pssKb` | {'int': 294} |
| `rendererMaxPssKb` | {'int': 294} |
| `renderers` | {'int': 294} |
| `tabs` | {'int': 294} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

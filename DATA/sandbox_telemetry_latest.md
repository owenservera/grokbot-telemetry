# sandbox_telemetry_parse — 2026-10-16 11:09:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=388808 lines=1453
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 956 |
| `memory_sample` | 488 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 488} |
| `chromeGpuPssKb` | {'int': 488} |
| `chromeOtherPssKb` | {'int': 488} |
| `chromeProcesses` | {'int': 488} |
| `chromeProfiles` | {'int': 488} |
| `chromeRendererMaxPssKb` | {'int': 488} |
| `chromeRendererPssKb` | {'int': 488} |
| `chromeRenderers` | {'int': 488} |
| `chromeTabs` | {'int': 488} |
| `chromeTabsProbedProfiles` | {'int': 488} |
| `chromeUtilityPssKb` | {'int': 488} |
| `desktopPssKb` | {'int': 488} |
| `hostPssKb` | {'int': 488} |
| `kind` | {'str': 488} |
| `memAvailableKb` | {'int': 488} |
| `memTotalKb` | {'int': 488} |
| `otherPssKb` | {'int': 488} |
| `processes` | {'int': 488} |
| `pssFallbackProcesses` | {'int': 488} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 953} |
| `display` | {'int': 956} |
| `kind` | {'str': 956} |
| `processes` | {'int': 956} |
| `pssKb` | {'int': 956} |
| `rendererMaxPssKb` | {'int': 956} |
| `renderers` | {'int': 956} |
| `tabs` | {'int': 955} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

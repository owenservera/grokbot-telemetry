# sandbox_telemetry_parse — 2026-10-16 17:43:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=683337 lines=2554
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1690 |
| `memory_sample` | 855 |
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
| `chromeBrowserPssKb` | {'int': 855} |
| `chromeGpuPssKb` | {'int': 855} |
| `chromeOtherPssKb` | {'int': 855} |
| `chromeProcesses` | {'int': 855} |
| `chromeProfiles` | {'int': 855} |
| `chromeRendererMaxPssKb` | {'int': 855} |
| `chromeRendererPssKb` | {'int': 855} |
| `chromeRenderers` | {'int': 855} |
| `chromeTabs` | {'int': 855} |
| `chromeTabsProbedProfiles` | {'int': 855} |
| `chromeUtilityPssKb` | {'int': 855} |
| `desktopPssKb` | {'int': 855} |
| `hostPssKb` | {'int': 855} |
| `kind` | {'str': 855} |
| `memAvailableKb` | {'int': 855} |
| `memTotalKb` | {'int': 855} |
| `otherPssKb` | {'int': 855} |
| `processes` | {'int': 855} |
| `pssFallbackProcesses` | {'int': 855} |

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
| `cpuMillicores` | {'int': 1687} |
| `display` | {'int': 1690} |
| `kind` | {'str': 1690} |
| `processes` | {'int': 1690} |
| `pssKb` | {'int': 1690} |
| `rendererMaxPssKb` | {'int': 1690} |
| `renderers` | {'int': 1690} |
| `tabs` | {'int': 1689} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

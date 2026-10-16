# sandbox_telemetry_parse — 2026-10-16 20:42:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=815027 lines=3046
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2018 |
| `memory_sample` | 1019 |
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
| `chromeBrowserPssKb` | {'int': 1019} |
| `chromeGpuPssKb` | {'int': 1019} |
| `chromeOtherPssKb` | {'int': 1019} |
| `chromeProcesses` | {'int': 1019} |
| `chromeProfiles` | {'int': 1019} |
| `chromeRendererMaxPssKb` | {'int': 1019} |
| `chromeRendererPssKb` | {'int': 1019} |
| `chromeRenderers` | {'int': 1019} |
| `chromeTabs` | {'int': 1019} |
| `chromeTabsProbedProfiles` | {'int': 1019} |
| `chromeUtilityPssKb` | {'int': 1019} |
| `desktopPssKb` | {'int': 1019} |
| `hostPssKb` | {'int': 1019} |
| `kind` | {'str': 1019} |
| `memAvailableKb` | {'int': 1019} |
| `memTotalKb` | {'int': 1019} |
| `otherPssKb` | {'int': 1019} |
| `processes` | {'int': 1019} |
| `pssFallbackProcesses` | {'int': 1019} |

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
| `cpuMillicores` | {'int': 2015} |
| `display` | {'int': 2018} |
| `kind` | {'str': 2018} |
| `processes` | {'int': 2018} |
| `pssKb` | {'int': 2018} |
| `rendererMaxPssKb` | {'int': 2018} |
| `renderers` | {'int': 2018} |
| `tabs` | {'int': 2017} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

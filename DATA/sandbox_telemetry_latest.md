# sandbox_telemetry_parse — 2026-10-16 20:43:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=815830 lines=3049
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2020 |
| `memory_sample` | 1020 |
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
| `chromeBrowserPssKb` | {'int': 1020} |
| `chromeGpuPssKb` | {'int': 1020} |
| `chromeOtherPssKb` | {'int': 1020} |
| `chromeProcesses` | {'int': 1020} |
| `chromeProfiles` | {'int': 1020} |
| `chromeRendererMaxPssKb` | {'int': 1020} |
| `chromeRendererPssKb` | {'int': 1020} |
| `chromeRenderers` | {'int': 1020} |
| `chromeTabs` | {'int': 1020} |
| `chromeTabsProbedProfiles` | {'int': 1020} |
| `chromeUtilityPssKb` | {'int': 1020} |
| `desktopPssKb` | {'int': 1020} |
| `hostPssKb` | {'int': 1020} |
| `kind` | {'str': 1020} |
| `memAvailableKb` | {'int': 1020} |
| `memTotalKb` | {'int': 1020} |
| `otherPssKb` | {'int': 1020} |
| `processes` | {'int': 1020} |
| `pssFallbackProcesses` | {'int': 1020} |

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
| `cpuMillicores` | {'int': 2017} |
| `display` | {'int': 2020} |
| `kind` | {'str': 2020} |
| `processes` | {'int': 2020} |
| `pssKb` | {'int': 2020} |
| `rendererMaxPssKb` | {'int': 2020} |
| `renderers` | {'int': 2020} |
| `tabs` | {'int': 2019} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

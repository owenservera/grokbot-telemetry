# sandbox_telemetry_parse — 2026-10-16 05:11:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=124799 lines=466
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 298 |
| `memory_sample` | 159 |
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
| `chromeBrowserPssKb` | {'int': 159} |
| `chromeGpuPssKb` | {'int': 159} |
| `chromeOtherPssKb` | {'int': 159} |
| `chromeProcesses` | {'int': 159} |
| `chromeProfiles` | {'int': 159} |
| `chromeRendererMaxPssKb` | {'int': 159} |
| `chromeRendererPssKb` | {'int': 159} |
| `chromeRenderers` | {'int': 159} |
| `chromeTabs` | {'int': 159} |
| `chromeTabsProbedProfiles` | {'int': 159} |
| `chromeUtilityPssKb` | {'int': 159} |
| `desktopPssKb` | {'int': 159} |
| `hostPssKb` | {'int': 159} |
| `kind` | {'str': 159} |
| `memAvailableKb` | {'int': 159} |
| `memTotalKb` | {'int': 159} |
| `otherPssKb` | {'int': 159} |
| `processes` | {'int': 159} |
| `pssFallbackProcesses` | {'int': 159} |

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
| `cpuMillicores` | {'int': 295} |
| `display` | {'int': 298} |
| `kind` | {'str': 298} |
| `processes` | {'int': 298} |
| `pssKb` | {'int': 298} |
| `rendererMaxPssKb` | {'int': 298} |
| `renderers` | {'int': 298} |
| `tabs` | {'int': 297} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

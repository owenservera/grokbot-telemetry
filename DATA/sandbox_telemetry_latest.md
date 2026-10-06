# sandbox_telemetry_parse — 2026-10-06 03:53:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=136082 lines=303
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 298 |
| `boot_stage` | 3 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 298} |
| `chromeGpuPssKb` | {'int': 298} |
| `chromeOtherPssKb` | {'int': 298} |
| `chromeProcesses` | {'int': 298} |
| `chromeProfiles` | {'int': 298} |
| `chromeRendererMaxPssKb` | {'int': 298} |
| `chromeRendererPssKb` | {'int': 298} |
| `chromeRenderers` | {'int': 298} |
| `chromeTabs` | {'int': 298} |
| `chromeTabsProbedProfiles` | {'int': 298} |
| `chromeUtilityPssKb` | {'int': 298} |
| `desktopPssKb` | {'int': 298} |
| `hostPssKb` | {'int': 298} |
| `kind` | {'str': 298} |
| `memAvailableKb` | {'int': 298} |
| `memTotalKb` | {'int': 298} |
| `otherPssKb` | {'int': 298} |
| `processes` | {'int': 298} |
| `pssFallbackProcesses` | {'int': 298} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

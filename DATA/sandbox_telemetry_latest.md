# sandbox_telemetry_parse — 2026-10-06 05:37:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=183050 lines=406
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 401 |
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
| `chromeBrowserPssKb` | {'int': 401} |
| `chromeGpuPssKb` | {'int': 401} |
| `chromeOtherPssKb` | {'int': 401} |
| `chromeProcesses` | {'int': 401} |
| `chromeProfiles` | {'int': 401} |
| `chromeRendererMaxPssKb` | {'int': 401} |
| `chromeRendererPssKb` | {'int': 401} |
| `chromeRenderers` | {'int': 401} |
| `chromeTabs` | {'int': 401} |
| `chromeTabsProbedProfiles` | {'int': 401} |
| `chromeUtilityPssKb` | {'int': 401} |
| `desktopPssKb` | {'int': 401} |
| `hostPssKb` | {'int': 401} |
| `kind` | {'str': 401} |
| `memAvailableKb` | {'int': 401} |
| `memTotalKb` | {'int': 401} |
| `otherPssKb` | {'int': 401} |
| `processes` | {'int': 401} |
| `pssFallbackProcesses` | {'int': 401} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

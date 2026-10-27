# sandbox_telemetry_parse — 2026-10-27 07:16:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=388772 lines=863
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 858 |
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
| `chromeBrowserPssKb` | {'int': 858} |
| `chromeGpuPssKb` | {'int': 858} |
| `chromeOtherPssKb` | {'int': 858} |
| `chromeProcesses` | {'int': 858} |
| `chromeProfiles` | {'int': 858} |
| `chromeRendererMaxPssKb` | {'int': 858} |
| `chromeRendererPssKb` | {'int': 858} |
| `chromeRenderers` | {'int': 858} |
| `chromeTabs` | {'int': 858} |
| `chromeTabsProbedProfiles` | {'int': 858} |
| `chromeUtilityPssKb` | {'int': 858} |
| `desktopPssKb` | {'int': 858} |
| `hostPssKb` | {'int': 858} |
| `kind` | {'str': 858} |
| `memAvailableKb` | {'int': 858} |
| `memTotalKb` | {'int': 858} |
| `otherPssKb` | {'int': 858} |
| `processes` | {'int': 858} |
| `pssFallbackProcesses` | {'int': 858} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

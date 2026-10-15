# sandbox_telemetry_parse — 2026-10-15 03:05:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=632718 lines=1404
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1399 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1399} |
| `chromeGpuPssKb` | {'int': 1399} |
| `chromeOtherPssKb` | {'int': 1399} |
| `chromeProcesses` | {'int': 1399} |
| `chromeProfiles` | {'int': 1399} |
| `chromeRendererMaxPssKb` | {'int': 1399} |
| `chromeRendererPssKb` | {'int': 1399} |
| `chromeRenderers` | {'int': 1399} |
| `chromeTabs` | {'int': 1399} |
| `chromeTabsProbedProfiles` | {'int': 1399} |
| `chromeUtilityPssKb` | {'int': 1399} |
| `desktopPssKb` | {'int': 1399} |
| `hostPssKb` | {'int': 1399} |
| `kind` | {'str': 1399} |
| `memAvailableKb` | {'int': 1399} |
| `memTotalKb` | {'int': 1399} |
| `otherPssKb` | {'int': 1399} |
| `processes` | {'int': 1399} |
| `pssFallbackProcesses` | {'int': 1399} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

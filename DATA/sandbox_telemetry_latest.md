# sandbox_telemetry_parse — 2026-10-07 06:59:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=869053 lines=1910
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1905 |
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
| `chromeBrowserPssKb` | {'int': 1905} |
| `chromeGpuPssKb` | {'int': 1905} |
| `chromeOtherPssKb` | {'int': 1905} |
| `chromeProcesses` | {'int': 1905} |
| `chromeProfiles` | {'int': 1905} |
| `chromeRendererMaxPssKb` | {'int': 1905} |
| `chromeRendererPssKb` | {'int': 1905} |
| `chromeRenderers` | {'int': 1905} |
| `chromeTabs` | {'int': 1905} |
| `chromeTabsProbedProfiles` | {'int': 1905} |
| `chromeUtilityPssKb` | {'int': 1905} |
| `desktopPssKb` | {'int': 1905} |
| `hostPssKb` | {'int': 1905} |
| `kind` | {'str': 1905} |
| `memAvailableKb` | {'int': 1905} |
| `memTotalKb` | {'int': 1905} |
| `otherPssKb` | {'int': 1905} |
| `processes` | {'int': 1905} |
| `pssFallbackProcesses` | {'int': 1905} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

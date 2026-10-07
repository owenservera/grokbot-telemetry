# sandbox_telemetry_parse — 2026-10-07 11:02:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=979405 lines=2152
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2147 |
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
| `chromeBrowserPssKb` | {'int': 2147} |
| `chromeGpuPssKb` | {'int': 2147} |
| `chromeOtherPssKb` | {'int': 2147} |
| `chromeProcesses` | {'int': 2147} |
| `chromeProfiles` | {'int': 2147} |
| `chromeRendererMaxPssKb` | {'int': 2147} |
| `chromeRendererPssKb` | {'int': 2147} |
| `chromeRenderers` | {'int': 2147} |
| `chromeTabs` | {'int': 2147} |
| `chromeTabsProbedProfiles` | {'int': 2147} |
| `chromeUtilityPssKb` | {'int': 2147} |
| `desktopPssKb` | {'int': 2147} |
| `hostPssKb` | {'int': 2147} |
| `kind` | {'str': 2147} |
| `memAvailableKb` | {'int': 2147} |
| `memTotalKb` | {'int': 2147} |
| `otherPssKb` | {'int': 2147} |
| `processes` | {'int': 2147} |
| `pssFallbackProcesses` | {'int': 2147} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

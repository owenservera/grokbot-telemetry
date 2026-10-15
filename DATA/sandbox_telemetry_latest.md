# sandbox_telemetry_parse — 2026-10-15 20:08:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1032738 lines=2289
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2284 |
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
| `chromeBrowserPssKb` | {'int': 2284} |
| `chromeGpuPssKb` | {'int': 2284} |
| `chromeOtherPssKb` | {'int': 2284} |
| `chromeProcesses` | {'int': 2284} |
| `chromeProfiles` | {'int': 2284} |
| `chromeRendererMaxPssKb` | {'int': 2284} |
| `chromeRendererPssKb` | {'int': 2284} |
| `chromeRenderers` | {'int': 2284} |
| `chromeTabs` | {'int': 2284} |
| `chromeTabsProbedProfiles` | {'int': 2284} |
| `chromeUtilityPssKb` | {'int': 2284} |
| `desktopPssKb` | {'int': 2284} |
| `hostPssKb` | {'int': 2284} |
| `kind` | {'str': 2284} |
| `memAvailableKb` | {'int': 2284} |
| `memTotalKb` | {'int': 2284} |
| `otherPssKb` | {'int': 2284} |
| `processes` | {'int': 2284} |
| `pssFallbackProcesses` | {'int': 2284} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

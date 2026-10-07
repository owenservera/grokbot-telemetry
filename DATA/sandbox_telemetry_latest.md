# sandbox_telemetry_parse — 2026-10-07 06:44:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=862213 lines=1895
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1890 |
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
| `chromeBrowserPssKb` | {'int': 1890} |
| `chromeGpuPssKb` | {'int': 1890} |
| `chromeOtherPssKb` | {'int': 1890} |
| `chromeProcesses` | {'int': 1890} |
| `chromeProfiles` | {'int': 1890} |
| `chromeRendererMaxPssKb` | {'int': 1890} |
| `chromeRendererPssKb` | {'int': 1890} |
| `chromeRenderers` | {'int': 1890} |
| `chromeTabs` | {'int': 1890} |
| `chromeTabsProbedProfiles` | {'int': 1890} |
| `chromeUtilityPssKb` | {'int': 1890} |
| `desktopPssKb` | {'int': 1890} |
| `hostPssKb` | {'int': 1890} |
| `kind` | {'str': 1890} |
| `memAvailableKb` | {'int': 1890} |
| `memTotalKb` | {'int': 1890} |
| `otherPssKb` | {'int': 1890} |
| `processes` | {'int': 1890} |
| `pssFallbackProcesses` | {'int': 1890} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

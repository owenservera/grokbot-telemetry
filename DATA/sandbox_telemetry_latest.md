# sandbox_telemetry_parse — 2026-10-07 09:50:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=946573 lines=2080
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2075 |
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
| `chromeBrowserPssKb` | {'int': 2075} |
| `chromeGpuPssKb` | {'int': 2075} |
| `chromeOtherPssKb` | {'int': 2075} |
| `chromeProcesses` | {'int': 2075} |
| `chromeProfiles` | {'int': 2075} |
| `chromeRendererMaxPssKb` | {'int': 2075} |
| `chromeRendererPssKb` | {'int': 2075} |
| `chromeRenderers` | {'int': 2075} |
| `chromeTabs` | {'int': 2075} |
| `chromeTabsProbedProfiles` | {'int': 2075} |
| `chromeUtilityPssKb` | {'int': 2075} |
| `desktopPssKb` | {'int': 2075} |
| `hostPssKb` | {'int': 2075} |
| `kind` | {'str': 2075} |
| `memAvailableKb` | {'int': 2075} |
| `memTotalKb` | {'int': 2075} |
| `otherPssKb` | {'int': 2075} |
| `processes` | {'int': 2075} |
| `pssFallbackProcesses` | {'int': 2075} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-06 16:58:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=490394 lines=1080
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1075 |
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
| `chromeBrowserPssKb` | {'int': 1075} |
| `chromeGpuPssKb` | {'int': 1075} |
| `chromeOtherPssKb` | {'int': 1075} |
| `chromeProcesses` | {'int': 1075} |
| `chromeProfiles` | {'int': 1075} |
| `chromeRendererMaxPssKb` | {'int': 1075} |
| `chromeRendererPssKb` | {'int': 1075} |
| `chromeRenderers` | {'int': 1075} |
| `chromeTabs` | {'int': 1075} |
| `chromeTabsProbedProfiles` | {'int': 1075} |
| `chromeUtilityPssKb` | {'int': 1075} |
| `desktopPssKb` | {'int': 1075} |
| `hostPssKb` | {'int': 1075} |
| `kind` | {'str': 1075} |
| `memAvailableKb` | {'int': 1075} |
| `memTotalKb` | {'int': 1075} |
| `otherPssKb` | {'int': 1075} |
| `processes` | {'int': 1075} |
| `pssFallbackProcesses` | {'int': 1075} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

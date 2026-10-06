# sandbox_telemetry_parse — 2026-10-06 20:42:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=591626 lines=1302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1297 |
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
| `chromeBrowserPssKb` | {'int': 1297} |
| `chromeGpuPssKb` | {'int': 1297} |
| `chromeOtherPssKb` | {'int': 1297} |
| `chromeProcesses` | {'int': 1297} |
| `chromeProfiles` | {'int': 1297} |
| `chromeRendererMaxPssKb` | {'int': 1297} |
| `chromeRendererPssKb` | {'int': 1297} |
| `chromeRenderers` | {'int': 1297} |
| `chromeTabs` | {'int': 1297} |
| `chromeTabsProbedProfiles` | {'int': 1297} |
| `chromeUtilityPssKb` | {'int': 1297} |
| `desktopPssKb` | {'int': 1297} |
| `hostPssKb` | {'int': 1297} |
| `kind` | {'str': 1297} |
| `memAvailableKb` | {'int': 1297} |
| `memTotalKb` | {'int': 1297} |
| `otherPssKb` | {'int': 1297} |
| `processes` | {'int': 1297} |
| `pssFallbackProcesses` | {'int': 1297} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

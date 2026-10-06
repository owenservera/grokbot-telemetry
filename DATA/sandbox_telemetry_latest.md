# sandbox_telemetry_parse — 2026-10-06 20:47:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=594362 lines=1308
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1303 |
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
| `chromeBrowserPssKb` | {'int': 1303} |
| `chromeGpuPssKb` | {'int': 1303} |
| `chromeOtherPssKb` | {'int': 1303} |
| `chromeProcesses` | {'int': 1303} |
| `chromeProfiles` | {'int': 1303} |
| `chromeRendererMaxPssKb` | {'int': 1303} |
| `chromeRendererPssKb` | {'int': 1303} |
| `chromeRenderers` | {'int': 1303} |
| `chromeTabs` | {'int': 1303} |
| `chromeTabsProbedProfiles` | {'int': 1303} |
| `chromeUtilityPssKb` | {'int': 1303} |
| `desktopPssKb` | {'int': 1303} |
| `hostPssKb` | {'int': 1303} |
| `kind` | {'str': 1303} |
| `memAvailableKb` | {'int': 1303} |
| `memTotalKb` | {'int': 1303} |
| `otherPssKb` | {'int': 1303} |
| `processes` | {'int': 1303} |
| `pssFallbackProcesses` | {'int': 1303} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

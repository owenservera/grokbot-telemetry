# sandbox_telemetry_parse — 2026-10-06 03:58:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=138362 lines=308
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 303 |
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
| `chromeBrowserPssKb` | {'int': 303} |
| `chromeGpuPssKb` | {'int': 303} |
| `chromeOtherPssKb` | {'int': 303} |
| `chromeProcesses` | {'int': 303} |
| `chromeProfiles` | {'int': 303} |
| `chromeRendererMaxPssKb` | {'int': 303} |
| `chromeRendererPssKb` | {'int': 303} |
| `chromeRenderers` | {'int': 303} |
| `chromeTabs` | {'int': 303} |
| `chromeTabsProbedProfiles` | {'int': 303} |
| `chromeUtilityPssKb` | {'int': 303} |
| `desktopPssKb` | {'int': 303} |
| `hostPssKb` | {'int': 303} |
| `kind` | {'str': 303} |
| `memAvailableKb` | {'int': 303} |
| `memTotalKb` | {'int': 303} |
| `otherPssKb` | {'int': 303} |
| `processes` | {'int': 303} |
| `pssFallbackProcesses` | {'int': 303} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

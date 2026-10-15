# sandbox_telemetry_parse — 2026-10-15 03:45:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=648538 lines=1439
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1434 |
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
| `chromeBrowserPssKb` | {'int': 1434} |
| `chromeGpuPssKb` | {'int': 1434} |
| `chromeOtherPssKb` | {'int': 1434} |
| `chromeProcesses` | {'int': 1434} |
| `chromeProfiles` | {'int': 1434} |
| `chromeRendererMaxPssKb` | {'int': 1434} |
| `chromeRendererPssKb` | {'int': 1434} |
| `chromeRenderers` | {'int': 1434} |
| `chromeTabs` | {'int': 1434} |
| `chromeTabsProbedProfiles` | {'int': 1434} |
| `chromeUtilityPssKb` | {'int': 1434} |
| `desktopPssKb` | {'int': 1434} |
| `hostPssKb` | {'int': 1434} |
| `kind` | {'str': 1434} |
| `memAvailableKb` | {'int': 1434} |
| `memTotalKb` | {'int': 1434} |
| `otherPssKb` | {'int': 1434} |
| `processes` | {'int': 1434} |
| `pssFallbackProcesses` | {'int': 1434} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

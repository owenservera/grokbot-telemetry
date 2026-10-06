# sandbox_telemetry_parse — 2026-10-06 23:18:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=662306 lines=1457
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1452 |
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
| `chromeBrowserPssKb` | {'int': 1452} |
| `chromeGpuPssKb` | {'int': 1452} |
| `chromeOtherPssKb` | {'int': 1452} |
| `chromeProcesses` | {'int': 1452} |
| `chromeProfiles` | {'int': 1452} |
| `chromeRendererMaxPssKb` | {'int': 1452} |
| `chromeRendererPssKb` | {'int': 1452} |
| `chromeRenderers` | {'int': 1452} |
| `chromeTabs` | {'int': 1452} |
| `chromeTabsProbedProfiles` | {'int': 1452} |
| `chromeUtilityPssKb` | {'int': 1452} |
| `desktopPssKb` | {'int': 1452} |
| `hostPssKb` | {'int': 1452} |
| `kind` | {'str': 1452} |
| `memAvailableKb` | {'int': 1452} |
| `memTotalKb` | {'int': 1452} |
| `otherPssKb` | {'int': 1452} |
| `processes` | {'int': 1452} |
| `pssFallbackProcesses` | {'int': 1452} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

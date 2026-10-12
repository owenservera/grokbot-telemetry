# sandbox_telemetry_parse — 2026-10-12 23:34:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=695564 lines=1543
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1538 |
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
| `chromeBrowserPssKb` | {'int': 1538} |
| `chromeGpuPssKb` | {'int': 1538} |
| `chromeOtherPssKb` | {'int': 1538} |
| `chromeProcesses` | {'int': 1538} |
| `chromeProfiles` | {'int': 1538} |
| `chromeRendererMaxPssKb` | {'int': 1538} |
| `chromeRendererPssKb` | {'int': 1538} |
| `chromeRenderers` | {'int': 1538} |
| `chromeTabs` | {'int': 1538} |
| `chromeTabsProbedProfiles` | {'int': 1538} |
| `chromeUtilityPssKb` | {'int': 1538} |
| `desktopPssKb` | {'int': 1538} |
| `hostPssKb` | {'int': 1538} |
| `kind` | {'str': 1538} |
| `memAvailableKb` | {'int': 1538} |
| `memTotalKb` | {'int': 1538} |
| `otherPssKb` | {'int': 1538} |
| `processes` | {'int': 1538} |
| `pssFallbackProcesses` | {'int': 1538} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

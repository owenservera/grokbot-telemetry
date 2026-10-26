# sandbox_telemetry_parse — 2026-10-26 18:36:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=75126 lines=170
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 165 |
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
| `chromeBrowserPssKb` | {'int': 165} |
| `chromeGpuPssKb` | {'int': 165} |
| `chromeOtherPssKb` | {'int': 165} |
| `chromeProcesses` | {'int': 165} |
| `chromeProfiles` | {'int': 165} |
| `chromeRendererMaxPssKb` | {'int': 165} |
| `chromeRendererPssKb` | {'int': 165} |
| `chromeRenderers` | {'int': 165} |
| `chromeTabs` | {'int': 165} |
| `chromeTabsProbedProfiles` | {'int': 165} |
| `chromeUtilityPssKb` | {'int': 165} |
| `desktopPssKb` | {'int': 165} |
| `hostPssKb` | {'int': 165} |
| `kind` | {'str': 165} |
| `memAvailableKb` | {'int': 165} |
| `memTotalKb` | {'int': 165} |
| `otherPssKb` | {'int': 165} |
| `processes` | {'int': 165} |
| `pssFallbackProcesses` | {'int': 165} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

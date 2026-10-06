# sandbox_telemetry_parse — 2026-10-06 04:03:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=140642 lines=313
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 308 |
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
| `chromeBrowserPssKb` | {'int': 308} |
| `chromeGpuPssKb` | {'int': 308} |
| `chromeOtherPssKb` | {'int': 308} |
| `chromeProcesses` | {'int': 308} |
| `chromeProfiles` | {'int': 308} |
| `chromeRendererMaxPssKb` | {'int': 308} |
| `chromeRendererPssKb` | {'int': 308} |
| `chromeRenderers` | {'int': 308} |
| `chromeTabs` | {'int': 308} |
| `chromeTabsProbedProfiles` | {'int': 308} |
| `chromeUtilityPssKb` | {'int': 308} |
| `desktopPssKb` | {'int': 308} |
| `hostPssKb` | {'int': 308} |
| `kind` | {'str': 308} |
| `memAvailableKb` | {'int': 308} |
| `memTotalKb` | {'int': 308} |
| `otherPssKb` | {'int': 308} |
| `processes` | {'int': 308} |
| `pssFallbackProcesses` | {'int': 308} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

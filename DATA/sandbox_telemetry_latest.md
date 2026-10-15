# sandbox_telemetry_parse — 2026-10-15 17:45:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=978950 lines=2170
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2165 |
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
| `chromeBrowserPssKb` | {'int': 2165} |
| `chromeGpuPssKb` | {'int': 2165} |
| `chromeOtherPssKb` | {'int': 2165} |
| `chromeProcesses` | {'int': 2165} |
| `chromeProfiles` | {'int': 2165} |
| `chromeRendererMaxPssKb` | {'int': 2165} |
| `chromeRendererPssKb` | {'int': 2165} |
| `chromeRenderers` | {'int': 2165} |
| `chromeTabs` | {'int': 2165} |
| `chromeTabsProbedProfiles` | {'int': 2165} |
| `chromeUtilityPssKb` | {'int': 2165} |
| `desktopPssKb` | {'int': 2165} |
| `hostPssKb` | {'int': 2165} |
| `kind` | {'str': 2165} |
| `memAvailableKb` | {'int': 2165} |
| `memTotalKb` | {'int': 2165} |
| `otherPssKb` | {'int': 2165} |
| `processes` | {'int': 2165} |
| `pssFallbackProcesses` | {'int': 2165} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

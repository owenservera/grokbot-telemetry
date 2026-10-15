# sandbox_telemetry_parse — 2026-10-15 16:50:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=957706 lines=2123
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2118 |
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
| `chromeBrowserPssKb` | {'int': 2118} |
| `chromeGpuPssKb` | {'int': 2118} |
| `chromeOtherPssKb` | {'int': 2118} |
| `chromeProcesses` | {'int': 2118} |
| `chromeProfiles` | {'int': 2118} |
| `chromeRendererMaxPssKb` | {'int': 2118} |
| `chromeRendererPssKb` | {'int': 2118} |
| `chromeRenderers` | {'int': 2118} |
| `chromeTabs` | {'int': 2118} |
| `chromeTabsProbedProfiles` | {'int': 2118} |
| `chromeUtilityPssKb` | {'int': 2118} |
| `desktopPssKb` | {'int': 2118} |
| `hostPssKb` | {'int': 2118} |
| `kind` | {'str': 2118} |
| `memAvailableKb` | {'int': 2118} |
| `memTotalKb` | {'int': 2118} |
| `otherPssKb` | {'int': 2118} |
| `processes` | {'int': 2118} |
| `pssFallbackProcesses` | {'int': 2118} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

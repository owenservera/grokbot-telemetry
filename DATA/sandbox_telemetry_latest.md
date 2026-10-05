# sandbox_telemetry_parse — 2026-10-06 00:50:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=54002 lines=123
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 118 |
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
| `chromeBrowserPssKb` | {'int': 118} |
| `chromeGpuPssKb` | {'int': 118} |
| `chromeOtherPssKb` | {'int': 118} |
| `chromeProcesses` | {'int': 118} |
| `chromeProfiles` | {'int': 118} |
| `chromeRendererMaxPssKb` | {'int': 118} |
| `chromeRendererPssKb` | {'int': 118} |
| `chromeRenderers` | {'int': 118} |
| `chromeTabs` | {'int': 118} |
| `chromeTabsProbedProfiles` | {'int': 118} |
| `chromeUtilityPssKb` | {'int': 118} |
| `desktopPssKb` | {'int': 118} |
| `hostPssKb` | {'int': 118} |
| `kind` | {'str': 118} |
| `memAvailableKb` | {'int': 118} |
| `memTotalKb` | {'int': 118} |
| `otherPssKb` | {'int': 118} |
| `processes` | {'int': 118} |
| `pssFallbackProcesses` | {'int': 118} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

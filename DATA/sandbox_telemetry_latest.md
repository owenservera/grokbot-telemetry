# sandbox_telemetry_parse — 2026-10-15 16:46:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=956350 lines=2120
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2115 |
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
| `chromeBrowserPssKb` | {'int': 2115} |
| `chromeGpuPssKb` | {'int': 2115} |
| `chromeOtherPssKb` | {'int': 2115} |
| `chromeProcesses` | {'int': 2115} |
| `chromeProfiles` | {'int': 2115} |
| `chromeRendererMaxPssKb` | {'int': 2115} |
| `chromeRendererPssKb` | {'int': 2115} |
| `chromeRenderers` | {'int': 2115} |
| `chromeTabs` | {'int': 2115} |
| `chromeTabsProbedProfiles` | {'int': 2115} |
| `chromeUtilityPssKb` | {'int': 2115} |
| `desktopPssKb` | {'int': 2115} |
| `hostPssKb` | {'int': 2115} |
| `kind` | {'str': 2115} |
| `memAvailableKb` | {'int': 2115} |
| `memTotalKb` | {'int': 2115} |
| `otherPssKb` | {'int': 2115} |
| `processes` | {'int': 2115} |
| `pssFallbackProcesses` | {'int': 2115} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

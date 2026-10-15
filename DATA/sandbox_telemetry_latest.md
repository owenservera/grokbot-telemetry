# sandbox_telemetry_parse — 2026-10-15 16:41:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=954090 lines=2115
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2110 |
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
| `chromeBrowserPssKb` | {'int': 2110} |
| `chromeGpuPssKb` | {'int': 2110} |
| `chromeOtherPssKb` | {'int': 2110} |
| `chromeProcesses` | {'int': 2110} |
| `chromeProfiles` | {'int': 2110} |
| `chromeRendererMaxPssKb` | {'int': 2110} |
| `chromeRendererPssKb` | {'int': 2110} |
| `chromeRenderers` | {'int': 2110} |
| `chromeTabs` | {'int': 2110} |
| `chromeTabsProbedProfiles` | {'int': 2110} |
| `chromeUtilityPssKb` | {'int': 2110} |
| `desktopPssKb` | {'int': 2110} |
| `hostPssKb` | {'int': 2110} |
| `kind` | {'str': 2110} |
| `memAvailableKb` | {'int': 2110} |
| `memTotalKb` | {'int': 2110} |
| `otherPssKb` | {'int': 2110} |
| `processes` | {'int': 2110} |
| `pssFallbackProcesses` | {'int': 2110} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

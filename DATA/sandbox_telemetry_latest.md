# sandbox_telemetry_parse — 2026-10-06 08:07:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=250994 lines=555
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 550 |
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
| `chromeBrowserPssKb` | {'int': 550} |
| `chromeGpuPssKb` | {'int': 550} |
| `chromeOtherPssKb` | {'int': 550} |
| `chromeProcesses` | {'int': 550} |
| `chromeProfiles` | {'int': 550} |
| `chromeRendererMaxPssKb` | {'int': 550} |
| `chromeRendererPssKb` | {'int': 550} |
| `chromeRenderers` | {'int': 550} |
| `chromeTabs` | {'int': 550} |
| `chromeTabsProbedProfiles` | {'int': 550} |
| `chromeUtilityPssKb` | {'int': 550} |
| `desktopPssKb` | {'int': 550} |
| `hostPssKb` | {'int': 550} |
| `kind` | {'str': 550} |
| `memAvailableKb` | {'int': 550} |
| `memTotalKb` | {'int': 550} |
| `otherPssKb` | {'int': 550} |
| `processes` | {'int': 550} |
| `pssFallbackProcesses` | {'int': 550} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

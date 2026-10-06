# sandbox_telemetry_parse — 2026-10-07 00:56:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=707043 lines=1555
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1550 |
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
| `chromeBrowserPssKb` | {'int': 1550} |
| `chromeGpuPssKb` | {'int': 1550} |
| `chromeOtherPssKb` | {'int': 1550} |
| `chromeProcesses` | {'int': 1550} |
| `chromeProfiles` | {'int': 1550} |
| `chromeRendererMaxPssKb` | {'int': 1550} |
| `chromeRendererPssKb` | {'int': 1550} |
| `chromeRenderers` | {'int': 1550} |
| `chromeTabs` | {'int': 1550} |
| `chromeTabsProbedProfiles` | {'int': 1550} |
| `chromeUtilityPssKb` | {'int': 1550} |
| `desktopPssKb` | {'int': 1550} |
| `hostPssKb` | {'int': 1550} |
| `kind` | {'str': 1550} |
| `memAvailableKb` | {'int': 1550} |
| `memTotalKb` | {'int': 1550} |
| `otherPssKb` | {'int': 1550} |
| `processes` | {'int': 1550} |
| `pssFallbackProcesses` | {'int': 1550} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

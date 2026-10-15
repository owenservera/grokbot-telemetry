# sandbox_telemetry_parse — 2026-10-16 00:14:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1123590 lines=2490
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2485 |
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
| `chromeBrowserPssKb` | {'int': 2485} |
| `chromeGpuPssKb` | {'int': 2485} |
| `chromeOtherPssKb` | {'int': 2485} |
| `chromeProcesses` | {'int': 2485} |
| `chromeProfiles` | {'int': 2485} |
| `chromeRendererMaxPssKb` | {'int': 2485} |
| `chromeRendererPssKb` | {'int': 2485} |
| `chromeRenderers` | {'int': 2485} |
| `chromeTabs` | {'int': 2485} |
| `chromeTabsProbedProfiles` | {'int': 2485} |
| `chromeUtilityPssKb` | {'int': 2485} |
| `desktopPssKb` | {'int': 2485} |
| `hostPssKb` | {'int': 2485} |
| `kind` | {'str': 2485} |
| `memAvailableKb` | {'int': 2485} |
| `memTotalKb` | {'int': 2485} |
| `otherPssKb` | {'int': 2485} |
| `processes` | {'int': 2485} |
| `pssFallbackProcesses` | {'int': 2485} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

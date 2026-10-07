# sandbox_telemetry_parse — 2026-10-07 02:35:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=751829 lines=1653
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1648 |
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
| `chromeBrowserPssKb` | {'int': 1648} |
| `chromeGpuPssKb` | {'int': 1648} |
| `chromeOtherPssKb` | {'int': 1648} |
| `chromeProcesses` | {'int': 1648} |
| `chromeProfiles` | {'int': 1648} |
| `chromeRendererMaxPssKb` | {'int': 1648} |
| `chromeRendererPssKb` | {'int': 1648} |
| `chromeRenderers` | {'int': 1648} |
| `chromeTabs` | {'int': 1648} |
| `chromeTabsProbedProfiles` | {'int': 1648} |
| `chromeUtilityPssKb` | {'int': 1648} |
| `desktopPssKb` | {'int': 1648} |
| `hostPssKb` | {'int': 1648} |
| `kind` | {'str': 1648} |
| `memAvailableKb` | {'int': 1648} |
| `memTotalKb` | {'int': 1648} |
| `otherPssKb` | {'int': 1648} |
| `processes` | {'int': 1648} |
| `pssFallbackProcesses` | {'int': 1648} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

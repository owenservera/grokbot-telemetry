# sandbox_telemetry_parse — 2026-10-06 09:45:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=295682 lines=653
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 648 |
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
| `chromeBrowserPssKb` | {'int': 648} |
| `chromeGpuPssKb` | {'int': 648} |
| `chromeOtherPssKb` | {'int': 648} |
| `chromeProcesses` | {'int': 648} |
| `chromeProfiles` | {'int': 648} |
| `chromeRendererMaxPssKb` | {'int': 648} |
| `chromeRendererPssKb` | {'int': 648} |
| `chromeRenderers` | {'int': 648} |
| `chromeTabs` | {'int': 648} |
| `chromeTabsProbedProfiles` | {'int': 648} |
| `chromeUtilityPssKb` | {'int': 648} |
| `desktopPssKb` | {'int': 648} |
| `hostPssKb` | {'int': 648} |
| `kind` | {'str': 648} |
| `memAvailableKb` | {'int': 648} |
| `memTotalKb` | {'int': 648} |
| `otherPssKb` | {'int': 648} |
| `processes` | {'int': 648} |
| `pssFallbackProcesses` | {'int': 648} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

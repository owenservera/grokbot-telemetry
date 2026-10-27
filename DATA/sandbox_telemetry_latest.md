# sandbox_telemetry_parse — 2026-10-27 03:45:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=302892 lines=673
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 668 |
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
| `chromeBrowserPssKb` | {'int': 668} |
| `chromeGpuPssKb` | {'int': 668} |
| `chromeOtherPssKb` | {'int': 668} |
| `chromeProcesses` | {'int': 668} |
| `chromeProfiles` | {'int': 668} |
| `chromeRendererMaxPssKb` | {'int': 668} |
| `chromeRendererPssKb` | {'int': 668} |
| `chromeRenderers` | {'int': 668} |
| `chromeTabs` | {'int': 668} |
| `chromeTabsProbedProfiles` | {'int': 668} |
| `chromeUtilityPssKb` | {'int': 668} |
| `desktopPssKb` | {'int': 668} |
| `hostPssKb` | {'int': 668} |
| `kind` | {'str': 668} |
| `memAvailableKb` | {'int': 668} |
| `memTotalKb` | {'int': 668} |
| `otherPssKb` | {'int': 668} |
| `processes` | {'int': 668} |
| `pssFallbackProcesses` | {'int': 668} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

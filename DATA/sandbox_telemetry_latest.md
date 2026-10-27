# sandbox_telemetry_parse — 2026-10-27 04:13:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=314192 lines=698
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 693 |
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
| `chromeBrowserPssKb` | {'int': 693} |
| `chromeGpuPssKb` | {'int': 693} |
| `chromeOtherPssKb` | {'int': 693} |
| `chromeProcesses` | {'int': 693} |
| `chromeProfiles` | {'int': 693} |
| `chromeRendererMaxPssKb` | {'int': 693} |
| `chromeRendererPssKb` | {'int': 693} |
| `chromeRenderers` | {'int': 693} |
| `chromeTabs` | {'int': 693} |
| `chromeTabsProbedProfiles` | {'int': 693} |
| `chromeUtilityPssKb` | {'int': 693} |
| `desktopPssKb` | {'int': 693} |
| `hostPssKb` | {'int': 693} |
| `kind` | {'str': 693} |
| `memAvailableKb` | {'int': 693} |
| `memTotalKb` | {'int': 693} |
| `otherPssKb` | {'int': 693} |
| `processes` | {'int': 693} |
| `pssFallbackProcesses` | {'int': 693} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

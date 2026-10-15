# sandbox_telemetry_parse — 2026-10-15 16:27:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=949570 lines=2105
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2100 |
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
| `chromeBrowserPssKb` | {'int': 2100} |
| `chromeGpuPssKb` | {'int': 2100} |
| `chromeOtherPssKb` | {'int': 2100} |
| `chromeProcesses` | {'int': 2100} |
| `chromeProfiles` | {'int': 2100} |
| `chromeRendererMaxPssKb` | {'int': 2100} |
| `chromeRendererPssKb` | {'int': 2100} |
| `chromeRenderers` | {'int': 2100} |
| `chromeTabs` | {'int': 2100} |
| `chromeTabsProbedProfiles` | {'int': 2100} |
| `chromeUtilityPssKb` | {'int': 2100} |
| `desktopPssKb` | {'int': 2100} |
| `hostPssKb` | {'int': 2100} |
| `kind` | {'str': 2100} |
| `memAvailableKb` | {'int': 2100} |
| `memTotalKb` | {'int': 2100} |
| `otherPssKb` | {'int': 2100} |
| `processes` | {'int': 2100} |
| `pssFallbackProcesses` | {'int': 2100} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

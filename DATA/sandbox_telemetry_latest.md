# sandbox_telemetry_parse — 2026-10-26 17:16:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=38886 lines=90
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 85 |
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
| `chromeBrowserPssKb` | {'int': 85} |
| `chromeGpuPssKb` | {'int': 85} |
| `chromeOtherPssKb` | {'int': 85} |
| `chromeProcesses` | {'int': 85} |
| `chromeProfiles` | {'int': 85} |
| `chromeRendererMaxPssKb` | {'int': 85} |
| `chromeRendererPssKb` | {'int': 85} |
| `chromeRenderers` | {'int': 85} |
| `chromeTabs` | {'int': 85} |
| `chromeTabsProbedProfiles` | {'int': 85} |
| `chromeUtilityPssKb` | {'int': 85} |
| `desktopPssKb` | {'int': 85} |
| `hostPssKb` | {'int': 85} |
| `kind` | {'str': 85} |
| `memAvailableKb` | {'int': 85} |
| `memTotalKb` | {'int': 85} |
| `otherPssKb` | {'int': 85} |
| `processes` | {'int': 85} |
| `pssFallbackProcesses` | {'int': 85} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

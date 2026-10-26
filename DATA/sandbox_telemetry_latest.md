# sandbox_telemetry_parse — 2026-10-26 16:21:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=16689 lines=41
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 36 |
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
| `chromeBrowserPssKb` | {'int': 36} |
| `chromeGpuPssKb` | {'int': 36} |
| `chromeOtherPssKb` | {'int': 36} |
| `chromeProcesses` | {'int': 36} |
| `chromeProfiles` | {'int': 36} |
| `chromeRendererMaxPssKb` | {'int': 36} |
| `chromeRendererPssKb` | {'int': 36} |
| `chromeRenderers` | {'int': 36} |
| `chromeTabs` | {'int': 36} |
| `chromeTabsProbedProfiles` | {'int': 36} |
| `chromeUtilityPssKb` | {'int': 36} |
| `desktopPssKb` | {'int': 36} |
| `hostPssKb` | {'int': 36} |
| `kind` | {'str': 36} |
| `memAvailableKb` | {'int': 36} |
| `memTotalKb` | {'int': 36} |
| `otherPssKb` | {'int': 36} |
| `processes` | {'int': 36} |
| `pssFallbackProcesses` | {'int': 36} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

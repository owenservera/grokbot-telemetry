# sandbox_telemetry_parse — 2026-10-27 07:26:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=393292 lines=873
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 868 |
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
| `chromeBrowserPssKb` | {'int': 868} |
| `chromeGpuPssKb` | {'int': 868} |
| `chromeOtherPssKb` | {'int': 868} |
| `chromeProcesses` | {'int': 868} |
| `chromeProfiles` | {'int': 868} |
| `chromeRendererMaxPssKb` | {'int': 868} |
| `chromeRendererPssKb` | {'int': 868} |
| `chromeRenderers` | {'int': 868} |
| `chromeTabs` | {'int': 868} |
| `chromeTabsProbedProfiles` | {'int': 868} |
| `chromeUtilityPssKb` | {'int': 868} |
| `desktopPssKb` | {'int': 868} |
| `hostPssKb` | {'int': 868} |
| `kind` | {'str': 868} |
| `memAvailableKb` | {'int': 868} |
| `memTotalKb` | {'int': 868} |
| `otherPssKb` | {'int': 868} |
| `processes` | {'int': 868} |
| `pssFallbackProcesses` | {'int': 868} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

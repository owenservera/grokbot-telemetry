# sandbox_telemetry_parse — 2026-10-27 01:57:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=258138 lines=574
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 569 |
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
| `chromeBrowserPssKb` | {'int': 569} |
| `chromeGpuPssKb` | {'int': 569} |
| `chromeOtherPssKb` | {'int': 569} |
| `chromeProcesses` | {'int': 569} |
| `chromeProfiles` | {'int': 569} |
| `chromeRendererMaxPssKb` | {'int': 569} |
| `chromeRendererPssKb` | {'int': 569} |
| `chromeRenderers` | {'int': 569} |
| `chromeTabs` | {'int': 569} |
| `chromeTabsProbedProfiles` | {'int': 569} |
| `chromeUtilityPssKb` | {'int': 569} |
| `desktopPssKb` | {'int': 569} |
| `hostPssKb` | {'int': 569} |
| `kind` | {'str': 569} |
| `memAvailableKb` | {'int': 569} |
| `memTotalKb` | {'int': 569} |
| `otherPssKb` | {'int': 569} |
| `processes` | {'int': 569} |
| `pssFallbackProcesses` | {'int': 569} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

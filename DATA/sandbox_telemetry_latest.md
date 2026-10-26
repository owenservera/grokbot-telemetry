# sandbox_telemetry_parse — 2026-10-26 19:13:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=91434 lines=206
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 201 |
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
| `chromeBrowserPssKb` | {'int': 201} |
| `chromeGpuPssKb` | {'int': 201} |
| `chromeOtherPssKb` | {'int': 201} |
| `chromeProcesses` | {'int': 201} |
| `chromeProfiles` | {'int': 201} |
| `chromeRendererMaxPssKb` | {'int': 201} |
| `chromeRendererPssKb` | {'int': 201} |
| `chromeRenderers` | {'int': 201} |
| `chromeTabs` | {'int': 201} |
| `chromeTabsProbedProfiles` | {'int': 201} |
| `chromeUtilityPssKb` | {'int': 201} |
| `desktopPssKb` | {'int': 201} |
| `hostPssKb` | {'int': 201} |
| `kind` | {'str': 201} |
| `memAvailableKb` | {'int': 201} |
| `memTotalKb` | {'int': 201} |
| `otherPssKb` | {'int': 201} |
| `processes` | {'int': 201} |
| `pssFallbackProcesses` | {'int': 201} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

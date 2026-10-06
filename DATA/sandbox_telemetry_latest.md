# sandbox_telemetry_parse — 2026-10-06 12:10:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=361346 lines=797
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 792 |
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
| `chromeBrowserPssKb` | {'int': 792} |
| `chromeGpuPssKb` | {'int': 792} |
| `chromeOtherPssKb` | {'int': 792} |
| `chromeProcesses` | {'int': 792} |
| `chromeProfiles` | {'int': 792} |
| `chromeRendererMaxPssKb` | {'int': 792} |
| `chromeRendererPssKb` | {'int': 792} |
| `chromeRenderers` | {'int': 792} |
| `chromeTabs` | {'int': 792} |
| `chromeTabsProbedProfiles` | {'int': 792} |
| `chromeUtilityPssKb` | {'int': 792} |
| `desktopPssKb` | {'int': 792} |
| `hostPssKb` | {'int': 792} |
| `kind` | {'str': 792} |
| `memAvailableKb` | {'int': 792} |
| `memTotalKb` | {'int': 792} |
| `otherPssKb` | {'int': 792} |
| `processes` | {'int': 792} |
| `pssFallbackProcesses` | {'int': 792} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-06 07:20:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=230018 lines=509
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 504 |
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
| `chromeBrowserPssKb` | {'int': 504} |
| `chromeGpuPssKb` | {'int': 504} |
| `chromeOtherPssKb` | {'int': 504} |
| `chromeProcesses` | {'int': 504} |
| `chromeProfiles` | {'int': 504} |
| `chromeRendererMaxPssKb` | {'int': 504} |
| `chromeRendererPssKb` | {'int': 504} |
| `chromeRenderers` | {'int': 504} |
| `chromeTabs` | {'int': 504} |
| `chromeTabsProbedProfiles` | {'int': 504} |
| `chromeUtilityPssKb` | {'int': 504} |
| `desktopPssKb` | {'int': 504} |
| `hostPssKb` | {'int': 504} |
| `kind` | {'str': 504} |
| `memAvailableKb` | {'int': 504} |
| `memTotalKb` | {'int': 504} |
| `otherPssKb` | {'int': 504} |
| `processes` | {'int': 504} |
| `pssFallbackProcesses` | {'int': 504} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

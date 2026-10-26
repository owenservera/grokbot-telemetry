# sandbox_telemetry_parse — 2026-10-27 00:57:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=236847 lines=527
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 522 |
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
| `chromeBrowserPssKb` | {'int': 522} |
| `chromeGpuPssKb` | {'int': 522} |
| `chromeOtherPssKb` | {'int': 522} |
| `chromeProcesses` | {'int': 522} |
| `chromeProfiles` | {'int': 522} |
| `chromeRendererMaxPssKb` | {'int': 522} |
| `chromeRendererPssKb` | {'int': 522} |
| `chromeRenderers` | {'int': 522} |
| `chromeTabs` | {'int': 522} |
| `chromeTabsProbedProfiles` | {'int': 522} |
| `chromeUtilityPssKb` | {'int': 522} |
| `desktopPssKb` | {'int': 522} |
| `hostPssKb` | {'int': 522} |
| `kind` | {'str': 522} |
| `memAvailableKb` | {'int': 522} |
| `memTotalKb` | {'int': 522} |
| `otherPssKb` | {'int': 522} |
| `processes` | {'int': 522} |
| `pssFallbackProcesses` | {'int': 522} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

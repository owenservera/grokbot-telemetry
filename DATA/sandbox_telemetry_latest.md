# sandbox_telemetry_parse — 2026-10-27 06:28:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=370240 lines=822
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 817 |
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
| `chromeBrowserPssKb` | {'int': 817} |
| `chromeGpuPssKb` | {'int': 817} |
| `chromeOtherPssKb` | {'int': 817} |
| `chromeProcesses` | {'int': 817} |
| `chromeProfiles` | {'int': 817} |
| `chromeRendererMaxPssKb` | {'int': 817} |
| `chromeRendererPssKb` | {'int': 817} |
| `chromeRenderers` | {'int': 817} |
| `chromeTabs` | {'int': 817} |
| `chromeTabsProbedProfiles` | {'int': 817} |
| `chromeUtilityPssKb` | {'int': 817} |
| `desktopPssKb` | {'int': 817} |
| `hostPssKb` | {'int': 817} |
| `kind` | {'str': 817} |
| `memAvailableKb` | {'int': 817} |
| `memTotalKb` | {'int': 817} |
| `otherPssKb` | {'int': 817} |
| `processes` | {'int': 817} |
| `pssFallbackProcesses` | {'int': 817} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

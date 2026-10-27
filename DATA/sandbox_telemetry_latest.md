# sandbox_telemetry_parse — 2026-10-27 04:05:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=310576 lines=690
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 685 |
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
| `chromeBrowserPssKb` | {'int': 685} |
| `chromeGpuPssKb` | {'int': 685} |
| `chromeOtherPssKb` | {'int': 685} |
| `chromeProcesses` | {'int': 685} |
| `chromeProfiles` | {'int': 685} |
| `chromeRendererMaxPssKb` | {'int': 685} |
| `chromeRendererPssKb` | {'int': 685} |
| `chromeRenderers` | {'int': 685} |
| `chromeTabs` | {'int': 685} |
| `chromeTabsProbedProfiles` | {'int': 685} |
| `chromeUtilityPssKb` | {'int': 685} |
| `desktopPssKb` | {'int': 685} |
| `hostPssKb` | {'int': 685} |
| `kind` | {'str': 685} |
| `memAvailableKb` | {'int': 685} |
| `memTotalKb` | {'int': 685} |
| `otherPssKb` | {'int': 685} |
| `processes` | {'int': 685} |
| `pssFallbackProcesses` | {'int': 685} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

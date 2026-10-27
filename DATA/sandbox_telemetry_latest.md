# sandbox_telemetry_parse — 2026-10-27 03:54:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=306508 lines=681
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 676 |
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
| `chromeBrowserPssKb` | {'int': 676} |
| `chromeGpuPssKb` | {'int': 676} |
| `chromeOtherPssKb` | {'int': 676} |
| `chromeProcesses` | {'int': 676} |
| `chromeProfiles` | {'int': 676} |
| `chromeRendererMaxPssKb` | {'int': 676} |
| `chromeRendererPssKb` | {'int': 676} |
| `chromeRenderers` | {'int': 676} |
| `chromeTabs` | {'int': 676} |
| `chromeTabsProbedProfiles` | {'int': 676} |
| `chromeUtilityPssKb` | {'int': 676} |
| `desktopPssKb` | {'int': 676} |
| `hostPssKb` | {'int': 676} |
| `kind` | {'str': 676} |
| `memAvailableKb` | {'int': 676} |
| `memTotalKb` | {'int': 676} |
| `otherPssKb` | {'int': 676} |
| `processes` | {'int': 676} |
| `pssFallbackProcesses` | {'int': 676} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

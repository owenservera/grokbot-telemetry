# sandbox_telemetry_parse — 2026-10-07 15:10:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1092037 lines=2399
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2394 |
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
| `chromeBrowserPssKb` | {'int': 2394} |
| `chromeGpuPssKb` | {'int': 2394} |
| `chromeOtherPssKb` | {'int': 2394} |
| `chromeProcesses` | {'int': 2394} |
| `chromeProfiles` | {'int': 2394} |
| `chromeRendererMaxPssKb` | {'int': 2394} |
| `chromeRendererPssKb` | {'int': 2394} |
| `chromeRenderers` | {'int': 2394} |
| `chromeTabs` | {'int': 2394} |
| `chromeTabsProbedProfiles` | {'int': 2394} |
| `chromeUtilityPssKb` | {'int': 2394} |
| `desktopPssKb` | {'int': 2394} |
| `hostPssKb` | {'int': 2394} |
| `kind` | {'str': 2394} |
| `memAvailableKb` | {'int': 2394} |
| `memTotalKb` | {'int': 2394} |
| `otherPssKb` | {'int': 2394} |
| `processes` | {'int': 2394} |
| `pssFallbackProcesses` | {'int': 2394} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

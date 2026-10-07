# sandbox_telemetry_parse — 2026-10-07 06:13:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=850357 lines=1869
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1864 |
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
| `chromeBrowserPssKb` | {'int': 1864} |
| `chromeGpuPssKb` | {'int': 1864} |
| `chromeOtherPssKb` | {'int': 1864} |
| `chromeProcesses` | {'int': 1864} |
| `chromeProfiles` | {'int': 1864} |
| `chromeRendererMaxPssKb` | {'int': 1864} |
| `chromeRendererPssKb` | {'int': 1864} |
| `chromeRenderers` | {'int': 1864} |
| `chromeTabs` | {'int': 1864} |
| `chromeTabsProbedProfiles` | {'int': 1864} |
| `chromeUtilityPssKb` | {'int': 1864} |
| `desktopPssKb` | {'int': 1864} |
| `hostPssKb` | {'int': 1864} |
| `kind` | {'str': 1864} |
| `memAvailableKb` | {'int': 1864} |
| `memTotalKb` | {'int': 1864} |
| `otherPssKb` | {'int': 1864} |
| `processes` | {'int': 1864} |
| `pssFallbackProcesses` | {'int': 1864} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

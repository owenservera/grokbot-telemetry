# sandbox_telemetry_parse — 2026-11-17 07:43:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=304434 lines=679
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 672 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 672} |
| `chromeGpuPssKb` | {'int': 672} |
| `chromeOtherPssKb` | {'int': 672} |
| `chromeProcesses` | {'int': 672} |
| `chromeProfiles` | {'int': 672} |
| `chromeRendererMaxPssKb` | {'int': 672} |
| `chromeRendererPssKb` | {'int': 672} |
| `chromeRenderers` | {'int': 672} |
| `chromeTabs` | {'int': 672} |
| `chromeTabsProbedProfiles` | {'int': 672} |
| `chromeUtilityPssKb` | {'int': 672} |
| `desktopPssKb` | {'int': 672} |
| `hostPssKb` | {'int': 672} |
| `kind` | {'str': 672} |
| `memAvailableKb` | {'int': 672} |
| `memTotalKb` | {'int': 672} |
| `otherPssKb` | {'int': 672} |
| `processes` | {'int': 672} |
| `pssFallbackProcesses` | {'int': 672} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-06 05:31:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=180770 lines=401
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 396 |
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
| `chromeBrowserPssKb` | {'int': 396} |
| `chromeGpuPssKb` | {'int': 396} |
| `chromeOtherPssKb` | {'int': 396} |
| `chromeProcesses` | {'int': 396} |
| `chromeProfiles` | {'int': 396} |
| `chromeRendererMaxPssKb` | {'int': 396} |
| `chromeRendererPssKb` | {'int': 396} |
| `chromeRenderers` | {'int': 396} |
| `chromeTabs` | {'int': 396} |
| `chromeTabsProbedProfiles` | {'int': 396} |
| `chromeUtilityPssKb` | {'int': 396} |
| `desktopPssKb` | {'int': 396} |
| `hostPssKb` | {'int': 396} |
| `kind` | {'str': 396} |
| `memAvailableKb` | {'int': 396} |
| `memTotalKb` | {'int': 396} |
| `otherPssKb` | {'int': 396} |
| `processes` | {'int': 396} |
| `pssFallbackProcesses` | {'int': 396} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

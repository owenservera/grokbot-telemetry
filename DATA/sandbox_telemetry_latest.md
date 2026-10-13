# sandbox_telemetry_parse — 2026-10-13 21:39:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1232890 lines=3231
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2381 |
| `chrome_profile_sample` | 842 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2381} |
| `chromeGpuPssKb` | {'int': 2381} |
| `chromeOtherPssKb` | {'int': 2381} |
| `chromeProcesses` | {'int': 2381} |
| `chromeProfiles` | {'int': 2381} |
| `chromeRendererMaxPssKb` | {'int': 2381} |
| `chromeRendererPssKb` | {'int': 2381} |
| `chromeRenderers` | {'int': 2381} |
| `chromeTabs` | {'int': 2381} |
| `chromeTabsProbedProfiles` | {'int': 2381} |
| `chromeUtilityPssKb` | {'int': 2381} |
| `desktopPssKb` | {'int': 2381} |
| `hostPssKb` | {'int': 2381} |
| `kind` | {'str': 2381} |
| `memAvailableKb` | {'int': 2381} |
| `memTotalKb` | {'int': 2381} |
| `otherPssKb` | {'int': 2381} |
| `processes` | {'int': 2381} |
| `pssFallbackProcesses` | {'int': 2381} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 841} |
| `display` | {'int': 842} |
| `kind` | {'str': 842} |
| `processes` | {'int': 842} |
| `pssKb` | {'int': 842} |
| `rendererMaxPssKb` | {'int': 842} |
| `renderers` | {'int': 842} |
| `tabs` | {'int': 842} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

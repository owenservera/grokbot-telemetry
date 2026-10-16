# sandbox_telemetry_parse — 2026-10-16 20:47:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=818239 lines=3058
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2026 |
| `memory_sample` | 1023 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1023} |
| `chromeGpuPssKb` | {'int': 1023} |
| `chromeOtherPssKb` | {'int': 1023} |
| `chromeProcesses` | {'int': 1023} |
| `chromeProfiles` | {'int': 1023} |
| `chromeRendererMaxPssKb` | {'int': 1023} |
| `chromeRendererPssKb` | {'int': 1023} |
| `chromeRenderers` | {'int': 1023} |
| `chromeTabs` | {'int': 1023} |
| `chromeTabsProbedProfiles` | {'int': 1023} |
| `chromeUtilityPssKb` | {'int': 1023} |
| `desktopPssKb` | {'int': 1023} |
| `hostPssKb` | {'int': 1023} |
| `kind` | {'str': 1023} |
| `memAvailableKb` | {'int': 1023} |
| `memTotalKb` | {'int': 1023} |
| `otherPssKb` | {'int': 1023} |
| `processes` | {'int': 1023} |
| `pssFallbackProcesses` | {'int': 1023} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 2023} |
| `display` | {'int': 2026} |
| `kind` | {'str': 2026} |
| `processes` | {'int': 2026} |
| `pssKb` | {'int': 2026} |
| `rendererMaxPssKb` | {'int': 2026} |
| `renderers` | {'int': 2026} |
| `tabs` | {'int': 2025} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

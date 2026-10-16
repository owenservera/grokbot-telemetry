# sandbox_telemetry_parse — 2026-10-16 22:17:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=876065 lines=3274
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2170 |
| `memory_sample` | 1095 |
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
| `chromeBrowserPssKb` | {'int': 1095} |
| `chromeGpuPssKb` | {'int': 1095} |
| `chromeOtherPssKb` | {'int': 1095} |
| `chromeProcesses` | {'int': 1095} |
| `chromeProfiles` | {'int': 1095} |
| `chromeRendererMaxPssKb` | {'int': 1095} |
| `chromeRendererPssKb` | {'int': 1095} |
| `chromeRenderers` | {'int': 1095} |
| `chromeTabs` | {'int': 1095} |
| `chromeTabsProbedProfiles` | {'int': 1095} |
| `chromeUtilityPssKb` | {'int': 1095} |
| `desktopPssKb` | {'int': 1095} |
| `hostPssKb` | {'int': 1095} |
| `kind` | {'str': 1095} |
| `memAvailableKb` | {'int': 1095} |
| `memTotalKb` | {'int': 1095} |
| `otherPssKb` | {'int': 1095} |
| `processes` | {'int': 1095} |
| `pssFallbackProcesses` | {'int': 1095} |

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
| `cpuMillicores` | {'int': 2167} |
| `display` | {'int': 2170} |
| `kind` | {'str': 2170} |
| `processes` | {'int': 2170} |
| `pssKb` | {'int': 2170} |
| `rendererMaxPssKb` | {'int': 2170} |
| `renderers` | {'int': 2170} |
| `tabs` | {'int': 2169} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

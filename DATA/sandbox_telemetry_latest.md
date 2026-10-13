# sandbox_telemetry_parse — 2026-10-13 04:27:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=819215 lines=1933
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1732 |
| `chrome_profile_sample` | 193 |
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
| `chromeBrowserPssKb` | {'int': 1732} |
| `chromeGpuPssKb` | {'int': 1732} |
| `chromeOtherPssKb` | {'int': 1732} |
| `chromeProcesses` | {'int': 1732} |
| `chromeProfiles` | {'int': 1732} |
| `chromeRendererMaxPssKb` | {'int': 1732} |
| `chromeRendererPssKb` | {'int': 1732} |
| `chromeRenderers` | {'int': 1732} |
| `chromeTabs` | {'int': 1732} |
| `chromeTabsProbedProfiles` | {'int': 1732} |
| `chromeUtilityPssKb` | {'int': 1732} |
| `desktopPssKb` | {'int': 1732} |
| `hostPssKb` | {'int': 1732} |
| `kind` | {'str': 1732} |
| `memAvailableKb` | {'int': 1732} |
| `memTotalKb` | {'int': 1732} |
| `otherPssKb` | {'int': 1732} |
| `processes` | {'int': 1732} |
| `pssFallbackProcesses` | {'int': 1732} |

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
| `cpuMillicores` | {'int': 192} |
| `display` | {'int': 193} |
| `kind` | {'str': 193} |
| `processes` | {'int': 193} |
| `pssKb` | {'int': 193} |
| `rendererMaxPssKb` | {'int': 193} |
| `renderers` | {'int': 193} |
| `tabs` | {'int': 193} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

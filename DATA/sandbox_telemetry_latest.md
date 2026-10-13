# sandbox_telemetry_parse — 2026-10-13 03:52:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=798838 lines=1869
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1700 |
| `chrome_profile_sample` | 161 |
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
| `chromeBrowserPssKb` | {'int': 1700} |
| `chromeGpuPssKb` | {'int': 1700} |
| `chromeOtherPssKb` | {'int': 1700} |
| `chromeProcesses` | {'int': 1700} |
| `chromeProfiles` | {'int': 1700} |
| `chromeRendererMaxPssKb` | {'int': 1700} |
| `chromeRendererPssKb` | {'int': 1700} |
| `chromeRenderers` | {'int': 1700} |
| `chromeTabs` | {'int': 1700} |
| `chromeTabsProbedProfiles` | {'int': 1700} |
| `chromeUtilityPssKb` | {'int': 1700} |
| `desktopPssKb` | {'int': 1700} |
| `hostPssKb` | {'int': 1700} |
| `kind` | {'str': 1700} |
| `memAvailableKb` | {'int': 1700} |
| `memTotalKb` | {'int': 1700} |
| `otherPssKb` | {'int': 1700} |
| `processes` | {'int': 1700} |
| `pssFallbackProcesses` | {'int': 1700} |

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
| `cpuMillicores` | {'int': 160} |
| `display` | {'int': 161} |
| `kind` | {'str': 161} |
| `processes` | {'int': 161} |
| `pssKb` | {'int': 161} |
| `rendererMaxPssKb` | {'int': 161} |
| `renderers` | {'int': 161} |
| `tabs` | {'int': 161} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

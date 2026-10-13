# sandbox_telemetry_parse — 2026-10-13 03:53:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=799475 lines=1871
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1701 |
| `chrome_profile_sample` | 162 |
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
| `chromeBrowserPssKb` | {'int': 1701} |
| `chromeGpuPssKb` | {'int': 1701} |
| `chromeOtherPssKb` | {'int': 1701} |
| `chromeProcesses` | {'int': 1701} |
| `chromeProfiles` | {'int': 1701} |
| `chromeRendererMaxPssKb` | {'int': 1701} |
| `chromeRendererPssKb` | {'int': 1701} |
| `chromeRenderers` | {'int': 1701} |
| `chromeTabs` | {'int': 1701} |
| `chromeTabsProbedProfiles` | {'int': 1701} |
| `chromeUtilityPssKb` | {'int': 1701} |
| `desktopPssKb` | {'int': 1701} |
| `hostPssKb` | {'int': 1701} |
| `kind` | {'str': 1701} |
| `memAvailableKb` | {'int': 1701} |
| `memTotalKb` | {'int': 1701} |
| `otherPssKb` | {'int': 1701} |
| `processes` | {'int': 1701} |
| `pssFallbackProcesses` | {'int': 1701} |

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
| `cpuMillicores` | {'int': 161} |
| `display` | {'int': 162} |
| `kind` | {'str': 162} |
| `processes` | {'int': 162} |
| `pssKb` | {'int': 162} |
| `rendererMaxPssKb` | {'int': 162} |
| `renderers` | {'int': 162} |
| `tabs` | {'int': 162} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
